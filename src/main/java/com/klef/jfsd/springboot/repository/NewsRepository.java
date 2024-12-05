package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.News;

@Repository
public interface NewsRepository extends JpaRepository<News, Integer> 
{
//	public void save(News n);
}
