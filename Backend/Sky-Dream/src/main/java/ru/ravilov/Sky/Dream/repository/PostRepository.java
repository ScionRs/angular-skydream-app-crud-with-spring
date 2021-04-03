package ru.ravilov.Sky.Dream.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import ru.ravilov.Sky.Dream.entity.Post;

import java.util.Optional;

public interface PostRepository extends JpaRepository<Post,Long> {
    void deletePostById(Long id);

    Optional<Post> findPostById(Long id);
}
