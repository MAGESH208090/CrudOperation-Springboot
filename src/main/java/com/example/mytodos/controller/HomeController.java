package com.example.mytodos.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.mytodos.data.entity.TaskEntity;
import com.example.mytodos.data.repository.TaskmanageRepository;

@Controller
public class HomeController {

    private final TaskmanageRepository taskrepository;

    public HomeController(TaskmanageRepository taskrepository) {
        this.taskrepository = taskrepository;
    }

    @GetMapping("/")
    public String task(Model model) {
        System.out.println("todotask is called");
        List<TaskEntity> taskList = taskrepository.findAll();
        model.addAttribute("taskList", taskList);
        return "todotask";
    }

    @GetMapping("/add")
    public String add(Model model) {
        System.out.println("addtask is called");
        model.addAttribute("newTask", new TaskEntity());
        return "addtask";
    }

    @PostMapping("/save")
    public String save(@ModelAttribute("newTask") TaskEntity task, Model model) {
        if (task.getId() == null) {
            // If ID is null, it's a new task, so save it
            taskrepository.save(task);
            model.addAttribute("taskSaved", "Task added successfully");
        } else {
            // If ID is not null, it's an existing task, so update it
            taskrepository.save(task);
            model.addAttribute("taskSaved", "Task updated successfully");
        }
        return "redirect:/";
    }

    @GetMapping("/update-task")
    public String update(@RequestParam("id") Long id, Model model) {
        TaskEntity task = taskrepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Invalid task Id:" + id));
        model.addAttribute("newTask", task);
        return "addtask";
    }

    @PostMapping("/delete-task")
    public String delete(@RequestParam("id") Long id) {
        taskrepository.deleteById(id);
        return "redirect:/";
    }
}
