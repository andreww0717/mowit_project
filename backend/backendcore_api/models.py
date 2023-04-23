
from django.contrib.auth.models import User
from django.db import models
from PIL import Image

class Profile(models.Model):
  user = models.OneToOneField(User, on_delete=models.CASCADE) #When the user is deleted, the profile will also be deleted, this will be the same for any model with on_delete=models.CASCADE.
  image = models.ImageField(default='default.jpg', upload_to='profile_pics')

  def __str__(self):
    return self.user.username

  def save(self, *args, **kwargs):
      super(Profile, self).save(*args, **kwargs)

      profile_imgage = Image.open(self.image.path) # Open profile image

      # resizing the image
      if profile_imgage.height > 200 or profile_imgage.width > 200:
          output_size = (200, 200)
          profile_imgage.thumbnail(output_size)
          profile_imgage.save(self.image.path)



class UserInfo(models.Model):
  user = models.OneToOneField(User, on_delete=models.CASCADE)
  phone_number = models.CharField(max_length=10)
  address = models.CharField(max_length=100)
  zipcode = models.CharField(max_length=5)

  def __str__(self):
    return self.user.username

  def save(self, *args, **kwargs):
      super(UserInfo, self).save(*args, **kwargs)

# class RatingSystem(models.Model):
#   user = models.ForeignKey(User, on_delete=models.CASCADE)
#   ratings = models.IntegerField(default=0)

#   def __str__(self):
#     return self.user.username
