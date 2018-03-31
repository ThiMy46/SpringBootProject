package com.daomy.dao;

import org.springframework.data.repository.CrudRepository;

import com.daomy.model.News;

public interface NewsRepository extends CrudRepository<News, Integer> {

}
