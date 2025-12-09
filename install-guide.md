Boot Arch ISO
Archinstall:

- Section 	Option
- Mirrors and repositories 	Select regions > Your country
- Disk configuration 	Partitioning > Default partitioning layout > Select disk (with space + return)
- Disk > File system 	btrfs (default structure: yes + use compression)
- Disk > Disk encryption 	Encryption type: LUKS + Encryption password + Partitions (select the one)
- Hostname 	Give your computer a name
- Bootloader 	Limine
- Authentication > Root password 	Set yours
- Authentication > User account 	Add a user > Superuser: Yes > Confirm and exit
- Applications > Audio 	pipewire
- Network configuration 	Copy ISO network config
- Timezone 	Set yours

Beware that you must setup disk encryption to use Omarchy as designed! The setup relies exclusively on disk encryption to secure your device, as it'll auto-login the user after the disk has been decrypted at boot.

Just note that this encryption setup won't allow you to enter the password from a Bluetooth keyboard at startup. Just like you can't use a Bluetooth keyboard to enter the BIOS on a PC. You'll need a keyboard that either uses a 2.4ghz dongle or a cable (which is much nicer for latency anyway!). I personally love the Lofree Flow84!

Here's what the disk encryption setup should look like. You need to pick LUKS, then set the encryption password, then apply to the partition (this step is crucial or nothing gets encrypted!):

Info:
- Encryption type: LUKS
- Password: ************
- Paritions: 1 selected

Once Arch has been installed, pick reboot, login with the user you just setup, and now you're ready to install Omarchy by running:

```bash
git clone https://github.com/emiliano-gandini-outeda/omarchy.git
cd omarchy
sudo bash install.sh
```

