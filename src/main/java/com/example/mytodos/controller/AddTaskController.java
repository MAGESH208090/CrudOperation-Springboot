package com.example.mytodos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.mytodos.data.entity.TaskEntity;
import com.example.mytodos.data.repository.TaskmanageRepository;

@Controller
public class AddTaskController {

    @Autowired
    private TaskmanageRepository TaskRepo;

    @PostMapping("/add-task")
    public String addTask(@ModelAttribute("newTask") TaskEntity task, Model model) {
        System.out.println("/add-task is called");
        TaskRepo.save(task);
        model.addAttribute("taskSaved", "Task saved successfully");
        return "redirect:/";
    }
}
