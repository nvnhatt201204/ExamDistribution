package com.example.demo.entities;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.UUID;

@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "staff")
public class Staff {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID id;

    @Size(max = 15, message = "Staff code must be less than 15 characters")
    @NotBlank(message = "Staff code cannot be empty")
    @Column(name = "staff_code")
    private String staffCode;

    @Email(message = "Invalid email format")
    @Pattern(regexp = "^[^\\s@]+@fpt\\.edu\\.vn$", message = "FPT email must end with @fpt.edu.vn and cannot contain spaces")
    @Column(name = "account_fpt")
    private String accountFpt;

    @Email(message = "Invalid email format")
    @Pattern(regexp = "^[^\\s@]+@fe\\.edu\\.vn$", message = "FE email must end with @fe.edu.vn and cannot contain spaces")
    @Column(name = "account_fe")
    private String accountFe;

    @NotBlank(message = "Name cannot be empty")
    @Column(name = "name")
    private String name;

    @Column(name = "status")
    private Integer status;

}
