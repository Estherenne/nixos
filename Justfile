build:
  nh os switch . --accept-flake-config

clean:
  nh clean all --optimise -k 5

update:
  nh os switch . --accept-flake-config -u
