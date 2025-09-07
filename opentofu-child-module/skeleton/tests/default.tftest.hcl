# Test
# https://opentofu.org/docs/cli/commands/test

run "default" {
  assert {
    condition = module.test.prefix == "example"
    error_message = "Expected module.test.prefix to be 'example'"
  }

  command = apply

  module {
    source = "./tests/fixtures/default"
  }
}
