package com.example.demo.controllers;

import com.example.demo.entities.Staff;
import com.example.demo.repositories.StaffRepository;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;



@Controller

@RequestMapping("/staffs")
public class StaffController {
    private final StaffRepository staffRepository;



    @Autowired
    public StaffController(StaffRepository staffRepository) {
        this.staffRepository = staffRepository;
    }

    // Hiển thị danh sách nhân viên
    @GetMapping("/list")
    public String listStaffs(Model model) {
        List<Staff> staffs = staffRepository.findAll();
        model.addAttribute("staffs", staffs);
        return "staffs/list";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("staff", new Staff());
        return "staffs/add";
    }

    @PostMapping("/add")
    public String addStaff(@ModelAttribute Staff staff, BindingResult result, Model model) {

        if (result.hasErrors()) {
            return "staffs/add";
        }

        if (staffRepository.existsByStaffCode(staff.getStaffCode())) {
            result.rejectValue("staffCode", "error.staff", "Staff code already exists");
            return "staffs/add";
        }
        if (staffRepository.existsByAccountFe(staff.getAccountFe())) {
            result.rejectValue("accountFe", "error.staff", "FE email already exists");
            return "staffs/add";
        }
        if (staffRepository.existsByAccountFpt(staff.getAccountFpt())) {
            result.rejectValue("accountFpt", "error.staff", "FPT email already exists");
            return "staffs/add";
        }

        staffRepository.save(staff);
        return "redirect:/staffs/list";
    }


    @GetMapping("/edit/{id}")
    public String showUpdateForm(@PathVariable("id") UUID id, Model model) {
        Staff staff = staffRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid staff Id:" + id));
        model.addAttribute("staff", staff);
        return "staffs/edit";
    }

    @PostMapping("/update")
    public String updateStaff(@PathVariable("id") UUID id, @ModelAttribute Staff staff, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "staffs/edit";
        }

        if (staffRepository.existsByStaffCodeAndIdNot(staff.getStaffCode(), id)) {
            result.rejectValue("staffCode", "error.staff", "Staff code already exists");
            return "staffs/edit";
        }
        if (staffRepository.existsByAccountFeAndIdNot(staff.getAccountFe(), id)) {
            result.rejectValue("accountFe", "error.staff", "FE email already exists");
            return "staffs/edit";
        }
        if (staffRepository.existsByAccountFptAndIdNot(staff.getAccountFpt(), id)) {
            result.rejectValue("accountFpt", "error.staff", "FPT email already exists");
            return "staffs/edit";
        }

        staffRepository.save(staff);
        return "redirect:/staffs/list";
    }

    @GetMapping("/detail/{id}")
    public String showStaffDetail(@PathVariable("id") UUID id, Model model) {
        Staff staff = staffRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid staff Id:" + id));
        model.addAttribute("staff", staff);
        return "staffs/detail";
    }

    @GetMapping("/delete/{id}")
    public String deleteStaff(@PathVariable("id") UUID id, Model model) {
        Staff staff = staffRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid staff Id:" + id));
        staffRepository.delete(staff);
        return "redirect:/staffs/list";
    }
}
