import { Component } from '@angular/core';
import {Post} from "./interface/post";
import {PostService} from "./service/post.service";
import {HttpErrorResponse, HttpResponse} from "@angular/common/http";
import {NgForm} from "@angular/forms";

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  public posts: Post[];
  public editPost: Post;
  public deletePost: Post;

  constructor(private postService: PostService) {}

  ngOnInit(){
    this.getPosts();
  }

  public getPosts(): void {
    this.postService.getPosts().subscribe(
      (response: Post[]) => {
        this.posts = response;
      },
      (error: HttpErrorResponse) => {
        alert(error.message);
      }
    );
  }

  public onAddPost(addForm: NgForm): void {
    document.getElementById('add-post-form').click();
    this.postService.addPost(addForm.value).subscribe(
      (response: Post) => {
        console.log(response);
        this.getPosts();
        addForm.reset();
      },
      (error: HttpErrorResponse) => {
        alert(error.message);
        addForm.reset();
      }
    );
  }

  public onUpdatePost(post: Post): void {
    this.postService.updatePost(post).subscribe(
      (response: Post) => {
        console.log(response);
        this.getPosts();
      },
      (error: HttpErrorResponse) => {
        alert(error.message);
      }
    );
  }

  public onDeletePost(postId: number): void {
    this.postService.deletePost(postId).subscribe(
      (response: void) => {
        console.log(response);
        this.getPosts();
      },
      (error: HttpErrorResponse) => {
        alert(error.message);
      }
    );
  }

  public onOpenModal(post: Post, mode: string): void{
    const container = document.getElementById('main-container');
    const button = document.createElement('button');
    button.type = 'button';
    button.style.display = 'none';
    button.setAttribute('data-toggle','modal');
    if (mode === 'add') {
      button.setAttribute('data-target', '#addPostModal');
    }
    if (mode === 'edit') {
      this.editPost = post;
      button.setAttribute('data-target', '#updatePostModal');
    }
    if (mode === 'delete') {
      this.deletePost = post;
      button.setAttribute('data-target', '#deletePostModal');
    }
    container.appendChild(button);
    button.click();
  }
}
