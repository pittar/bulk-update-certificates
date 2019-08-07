# Bulk Update Secrets in Projects

1.  Generate a fake certificate.

Run the generate script to create a fake certificate called ca.crt.

```
$ ./generate-certificate.sh
```

2. Create a new project

Creat a new project with the `new-project` script:
```
$ ./new-project test-project
```

This script will create a new project add the label `requires-ca-bundle=true` and create the certificate secret.

3. Repeate for a few more projects.

Create a few more test projects so that you can see the update script work on more than one project.

4. Update the fake certificate.

Run the generate script again to make a new fake certificate.  It will overwrite the old ca.crt.

5. Run the update script.

```
$ ./update-certificates.sh
```

This will replace the certificate in every project that has the label `requires-ca-bundle=true`.

