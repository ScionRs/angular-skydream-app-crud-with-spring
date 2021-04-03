package ru.ravilov.Sky.Dream.service;

import javafx.geometry.Pos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.ravilov.Sky.Dream.entity.Post;
import ru.ravilov.Sky.Dream.exception.UserNotFoundException;
import ru.ravilov.Sky.Dream.repository.PostRepository;

import javax.transaction.Transactional;
import java.nio.file.attribute.UserPrincipalNotFoundException;
import java.util.List;

@Service
@Transactional
public class PostService{

    private final PostRepository postRepository;

    @Autowired
    public PostService(PostRepository postRepository) {
        this.postRepository = postRepository;
    }

    public Post addPost(Post post){

        return postRepository.save(post);
    }

    public List<Post> findAllPosts(){

        return postRepository.findAll();
    }

    public Post updatePost(Post post){

        return postRepository.save(post);
    }

    public Post findPostById(Long id){
        return postRepository.findPostById(id).orElseThrow(() -> new UserNotFoundException("Пост с таким айди" + id + " не найден."));
    }

    public void deletePost(Long id){

        postRepository.deletePostById(id);
    }
}
