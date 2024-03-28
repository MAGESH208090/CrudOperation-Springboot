package com.example.mytodos.data.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.mytodos.data.entity.TaskEntity;

@Repository
public interface TaskmanageRepository extends JpaRepository<TaskEntity, Long>
{

    

}
