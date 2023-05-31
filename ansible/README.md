# Playground

## Ansible Navigator Tests

Testing passing extravars, limits and environment vars

Need to use the `--penv` argument to tell navigator which env vars to pass to the execution environment

set env vars

*note the space before export. is to keep sensitive vars out of shell history*

```bash
 export MYPASS=''
 export MYENV='test.var.cool'
```

run ansible-navigator

`ansible-navigator run test.yml -i hosts --limit kube2 --extra-vars '{"myvar":"hello navigator"}' --penv MYPASS MYENV`
