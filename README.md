pre-commit-composer
==================
A [pre-commit](https://pre-commit.com/) hook for [Composer](https://getcomposer.org/), the PHP package manager.

This adds support for running various composer utilities in pre-commit hooks.

Usage
-----

### Using Composer validate with pre-commit
Add this to your `.pre-commit-config.yaml`:

```yaml
- repo: https://github.com/matchory/pre-commit-composer
  rev: v1.0.0
  hooks:
    - id: composer-validate
```

License
-------
MIT
