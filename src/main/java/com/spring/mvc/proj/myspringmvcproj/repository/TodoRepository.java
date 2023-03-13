package com.spring.mvc.proj.myspringmvcproj.repository;

import com.spring.mvc.proj.myspringmvcproj.entity.Todo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TodoRepository extends JpaRepository<Todo, Long> {
    List<Todo> findAllByName(String name);
}