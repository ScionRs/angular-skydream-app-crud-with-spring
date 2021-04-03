package ru.ravilov.Sky.Dream.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import ru.ravilov.Sky.Dream.entity.Post;
import ru.ravilov.Sky.Dream.service.PostService;

import java.util.List;

@RestController
@RequestMapping("/post")
public class PostController {

    private PostService postService;
    @Autowired
    public PostController(PostService postService) {
        this.postService = postService;
    }
    @GetMapping("/all")
    public ResponseEntity<List<Post>> getAllPosts() {
        List<Post> posts = postService.findAllPosts();
        return new ResponseEntity<>(posts, HttpStatus.OK);
    }

    @GetMapping("/find/{id}")
    public ResponseEntity<Post> getPostById(@PathVariable("id") Long id){
        Post post = postService.findPostById(id);
        return new ResponseEntity<>(post,HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity<Post> addPost(@RequestBody Post post){
        Post newPost = postService.addPost(post);
        return new ResponseEntity<>(newPost,HttpStatus.CREATED);
    }

    @PutMapping("/update")
    public ResponseEntity<Post> updatePost(@RequestBody Post post){
        Post updatePost = postService.updatePost(post);
        return new ResponseEntity<>(updatePost,HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<?> deletePost(@PathVariable("id") Long id){
        postService.deletePost(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }

}
