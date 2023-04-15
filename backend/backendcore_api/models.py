
from django.contrib.auth.models import User
from django.db import models
from PIL import Image

class Profile(models.Model):
  user = models.OneToOneField(User, on_delete=models.CASCADE)
  image = models.ImageField(default='default.jpg', upload_to='profile_pics')

  def __str__(self):
    return self.user.username

  # Override the save method of the model
  def save(self, *args, **kwargs):
      super(Profile, self).save(*args, **kwargs)

      img = Image.open(self.image.path) # Open image

      # resize image
      if img.height > 300 or img.width > 300:
          output_size = (300, 300)
          img.thumbnail(output_size) # Resize image
          img.save(self.image.path) # Save it again and override the larger image



class UserInfo(models.Model):
  user = models.OneToOneField(User, on_delete=models.CASCADE)
  phone_number = models.CharField(max_length=10)
  address = models.CharField(max_length=100)
  zipcode = models.CharField(max_length=5)

  def __str__(self):
    return self.user.username

  def save(self, *args, **kwargs):
      super(UserInfo, self).save(*args, **kwargs)
