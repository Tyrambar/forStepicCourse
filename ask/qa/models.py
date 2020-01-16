from django.db import models
from django.contrib.auth.models import User

class QuestionManager(models.Manager):
    def new(self):
        return self.order_by('-added_at')
    def popular(self):
        return self.order_by('-rating')


class Question(models.Model):
    objects = QuestionManager()
    title = models.CharField(max_length = 64)
    text = models.TextField()
    added_at = models.DateTimeField(auto_now_add=True)
    rating = models.IntegerField(default = 0)
    author = models.ForeignKey(User)
    likes = models.ManyToManyField(User, related_name = 'likes_counter')


class Answer(models.Model):
    text = models.TextField()
    added_at = models.DateTimeField(auto_now_add=True)
    question = models.ForeignKey(Post, on_delete = models.SET_NULL)
    author = models.ForeignKey(User)


