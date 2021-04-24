# Ruby-Algorithm

# How to Initialize?

```bash
git clone git@github.com:yoshi0202/ruby-algorithm.git
cd ruby-algorithm
docker build . -t ruby-algorithm:latest
```

# How to exec test?

```bash
docker run -it --rm ruby-algorithm rspec tests/example
# docker run -it --rm ruby-algorithm rspec tests/202104
# docker run -it --rm ruby-algorithm rspec tests/202104/1_spec
```

# How to development? (When editing questions and spec files, container build and docker run at the same time)

```bash
./build_and_run.sh tests/example
```

If you want to know more details. please see the build_and_run.sh .
