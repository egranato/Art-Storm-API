User.create!({"username"=>"egranato", "email"=>"ethan@granato.net", "first"=>"Ethan", "last"=>"Granato", "password"=>"youwillneverguess"})
Artist.create!({"first"=>"Kirsikka", "last"=>"Granato", "email"=>"kirsithequaker@gmail.com", "password"=>"tucsonisevil", "username"=>"Kirsi the Quaker", "phone"=>"(303) 881-5106", "website_url"=>"google.com", "portrait_url"=>"https://s-media-cache-ak0.pinimg.com/originals/1c/c5/fd/1cc5fde2972c825a3ef0a524496929ec.jpg", "bio"=>"I'm a bird (OvO \")", "quick_intro"=>"(//*grumbles under breath*//)"})
Follow.create!({"artists_id"=>1, "user_id"=>1})
Work.create!({"genre"=>"carving", "name"=>"birb", "description"=>"birb carving", "work_url"=>"http://mycargoship.com/store/media/ss_size3/redscarlettparrot31.jpg", "artists_id"=>1})
