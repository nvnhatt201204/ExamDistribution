package com.example.demo.repositories;

import com.example.demo.entities.Staff;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.UUID;

@Repository
public interface StaffRepository extends JpaRepository<Staff, UUID> {
    boolean existsByStaffCode(String staffCode);

    boolean existsByAccountFe(String accountFe);

    boolean existsByAccountFpt(String accountFpt);

    boolean existsByStaffCodeAndIdNot(String staffCode, UUID id);

    boolean existsByAccountFeAndIdNot(String accountFe, UUID id);

    boolean existsByAccountFptAndIdNot(String accountFpt, UUID id);
}
