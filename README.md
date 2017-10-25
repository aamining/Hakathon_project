# Scope of work:

This is a simple Art Gallery app. Able to put art pictures and sell them.

# Buyer would be able to pay oline

# PAYMENTS

1- First for payment system need to follow this web site link.. It would be necessary to follow instruction and create

"Cherges" controller and "Charges" view.

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

4- then we should have "application.yml" file in config folder or

in directory

note: it maybe hidden so find it by 'ls' from terminal and add

inside

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
