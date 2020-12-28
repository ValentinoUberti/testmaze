## BUILD

podman build -t mytest

#If running on a system with SELinux:
Assuming "/home/vale/Projects/mazetest" as project folder

```
sudo semanage fcontext -a -t container_file_t "/home/vale/Projects/mazetest(/.*)?"
sudo restorecon -Rv .

```

#Build (if you want to rebuild...)

- podman run --rm -v $(pwd):/mnt mytest scripts/build.sh


#Test

- podman run --rm -v $(pwd):/mnt mytest scripts/test.sh

#Run

- podman run --rm -v $(pwd):/mnt mytest scripts/run.sh /mnt/testMap1.json 2 "Knife,Potted Plant"
- podman run --rm -v $(pwd):/mnt mytest scripts/run.sh /mnt/testMap2.json 4 "Knife,Potted Plant,Pillow"
