docker run -i --device=/dev/kvm -p 5902:5902 ubuntu bash -c "apt-get update && apt-get install -y qemu-system-x86-64 unzip wget && wget "https://github.com/rtedpro-cpu/android-x86/releases/download/androidbooter2/GITHUB.zip" && unzip GITHUB.zip && mv *.vmdk a.vmdk && qemu-system-x86_64 -cpu host -smp sockets=1,cores=3,threads=1 -m 11G -hda a.vmdk -vga virtio -device e1000,netdev=n0 -netdev user,id=n0,hostfwd=tcp::5555-:5555 -accel kvm -machine usb=on -device usb-tablet -vnc :2"
