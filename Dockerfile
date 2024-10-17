# pakai image ruby versi 3.2.2 untuk base image
FROM ruby:3.2.2

# setting direktori kerja di kontainer
WORKDIR /app

# copy file gem dan gemfile.lock ke dalam container
COPY Gemfile Gemfile.lock ./

# install lib
RUN bundle install

COPY . .

# jalankan test
CMD ["rake test"]
