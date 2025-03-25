
### This action forked by maddox/actions
https://github.com/maddox/actions/tree/master/ssh


## Usage

To use the action simply add the following lines to your `.github/main.workflow`

```
action "Run deploy script" {
  uses = "c0b41/actions/ssh@master"
  args = "/opt/deploy/run"
  secrets = [
    "PRIVATE_KEY",
    "HOST",
    "USER"
  ]
}
```

### Required Arguments

The argument you will use is the command that will be ran on your server via SSH.

#### Examples

* ```args = "/opt/deploy/run"```
* ```args = "touch ~/.reload"```

### Required Secrets

You'll need to provide some secrets to use the action.

* **PRIVATE_KEY**: Your SSH private key.
* **HOST**: The host the action will SSH to to run the command. ie, `your.site.com`.
* **USER**: The user the SSH command will auth as with the private key.

### Optional Secrets

* **PORT**: The port SSH is listening on. Default: `22`