# Scope of work:

This is a simple Art Gallery app. Able to put art pictures and sell them.

# Buyer would be able to pay online

# PAYMENTS

1- First for payment system need to follow this web site link.. It would be necessary to follow instruction and create

"Charges" controller and "Charges" view.

```
https://stripe.com/docs/checkout/rails

```
2- then need to add Figaro gem file

https://github.com/laserlemon/figaro

```
gem "figaro"

```
3-

```
bundle exec figaro install

```
4- in the Terminal we have to type this two lines first:

```
export PUBLISHABLE_KEY="pk_test_zJWuFSymuSooT4kvpiseF7zJ"

and then...

export SECRET_KEY="sk_test_4YzPw8C6g6Bpidz7sQQkLbCt"

```
5- then we should have "application.yml" file in config folder or

in directory.

note: it maybe hidden so find it by 'ls' from terminal and add

inside it:

```
PUBLISHABLE_KEY: "pk_test_zJWuFSymuSooT4kvpiseF7zJ"
SECRET_KEY: "sk_test_4YzPw8C6g6Bpidz7sQQkLb"

```

# Deploying to Heroku

```
git init
git add .
git commit -m 'My simple Stripe application'
heroku create
heroku config:set PUBLISHABLE_KEY=pk_test_zJWuFSymuSooT4kvpiseF7zJ SECRET_KEY=sk_test_4YzPw8C6g6Bpidz7sQQkLbCt
git push heroku master
heroku open

```

# How to Upload and Work with images in Heroku

Heroku dose not keep images so we need to third party solution,

This time 'Cloudinary'

Cloudinary is a cloud-based service that provides an end-to-end image management solution, including upload, storage, administration, manipulation, optimization and delivery.

How to do this?

first:

```
gem 'cloudinary'

```

Uploads:

1- we have to create an account in cloudinary

2- download or create 'cloudinary.yml' file and store it in config and app

directory. This file would be ready and easily downloadable from following link. including all API cloudinary links.

```
https://cloudinary.com/console/cloudinary.yml

```

3- we have to put this in Image uploader file in Uploader folder.

```
include Cloudinary::CarrierWave

  version :standard do
    process :resize_to_fill => [100, 150, :north]
  end

  version :thumbnail do
    process :resize_to_fit => [50, 50]
  end

```

4- now have a look at Cloudinay dashboard. picture should be there.
