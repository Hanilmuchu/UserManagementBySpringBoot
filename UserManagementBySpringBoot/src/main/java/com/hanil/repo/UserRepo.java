package com.hanil.repo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.hanil.entity.Users;

@Repository
public interface UserRepo extends CrudRepository<Users, Integer> {

}
