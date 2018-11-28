# envtemplate

envtemplate is simple script that replaces mustached variables in any file 
with matching environment variables (if available).

## Templates

Templates can be any file. Just place a {{MUSTACHED}} version of the environment
variable and it will be replaced with the environment variable's value when the
template is rendered (see below).

### Example Template

```
This is {{NAME}}'s template.
```

## Rendering the Template:

```
envtemplate render --in some-template.txt --out rendered-file.txt
```

Usually the script works with pre-set environment variables but if you want, you
can pass environment variables like so:

```
MY_VAR=myval envtemplate render --in some-template.txt --out rendered-file.txt
```

## Testing

To test the script, navigate into the test directory and run the test-runner.sh
script:

```
./test-runner.sh
```

