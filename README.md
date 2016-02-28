config
======

Personal package selection and and config files.
For that we are going to use a masterless salt minion. 

Install salt minion
```
wget -O install_salt.sh https://bootstrap.saltstack.com
sudo sh install_salt
```


Run salt on my states
```
git clone https://github.com/gotche/config.git code/config

cd code/config
bash config.sh 

```

Sensitive data is stored as pillars. It is encrypted and unencrypted when needed. In order to work with this setup the pillars folder needs to be in ~/.pillars
