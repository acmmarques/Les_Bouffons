module OffersHelper
  def cloudinary_image(clown)
    if clown.photos.attached?
      cl_image_tag clown.photos.first.key, class: "index-photos"
    else
      image_tag "https://i.guim.co.uk/img/media/771b1fbf98f680a716afe138a95fc2a80de9c149/0_645_3504_2101/master/3504.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=66af6e40fc5b5c96028d6c0ba87c2d12", class: "index-photos"
    end
  end

  def cloudinary_image_first(clown)
    if clown.photos.attached?
      cl_image_tag @clown.photos.first.key, :width=>800, :height=>800, :crop=>"crop", :gravity=>"face", class: "avatar-xl avatar_profile"
    else
      image_path "https://i.guim.co.uk/img/media/771b1fbf98f680a716afe138a95fc2a80de9c149/0_645_3504_2101/master/3504.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=66af6e40fc5b5c96028d6c0ba87c2d12", :width=>800, :height=>800, :crop=>"crop", :gravity=>"face", class: "avatar-xl avatar_profile"
    end
  end

  def cloudinary_image_second(clown)
    if clown.photos.attached?
      cl_image_path clown.photos.second.key, :width=>2000, :height=>2000, :gravity=>"faces", :crop=>"fill"
    else
      image_path "https://i.guim.co.uk/img/media/771b1fbf98f680a716afe138a95fc2a80de9c149/0_645_3504_2101/master/3504.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=66af6e40fc5b5c96028d6c0ba87c2d12", :width=>800, :height=>800, :crop=>"crop", :gravity=>"face", class: "avatar-xl avatar_profile"
    end
  end

  def cloudinary_image_third(clown)
    if clown.photos.attached?
      cl_image_path clown.photos.third.key, :width=>2000, :height=>2000, :gravity=>"faces", :crop=>"fill"
    else
      image_path "https://i.guim.co.uk/img/media/771b1fbf98f680a716afe138a95fc2a80de9c149/0_645_3504_2101/master/3504.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=66af6e40fc5b5c96028d6c0ba87c2d12", :width=>800, :height=>800, :crop=>"crop", :gravity=>"face", class: "avatar-xl avatar_profile"
    end
  end

  def cloudinary_image_fourth(clown)
    if clown.photos.attached?
      cl_image_path clown.photos.fourth.key, :width=>2000, :height=>2000, :gravity=>"faces", :crop=>"fill"
    else
      image_path "https://i.guim.co.uk/img/media/771b1fbf98f680a716afe138a95fc2a80de9c149/0_645_3504_2101/master/3504.jpg?width=1200&height=1200&quality=85&auto=format&fit=crop&s=66af6e40fc5b5c96028d6c0ba87c2d12", :width=>800, :height=>800, :crop=>"crop", :gravity=>"face", class: "avatar-xl avatar_profile"
    end
  end
end
