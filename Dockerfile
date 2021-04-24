FROM ruby:2.6.7 
# カリキュラムが2.6系だったのでおそらくこれで作っとけば大丈夫なはず
WORKDIR /ruby
COPY Gemfile .
COPY Gemfile.lock .
RUN gem install bundler
RUN bundle install
COPY questions/ ./questions/
COPY tests/ ./tests/
