# CustomCompiler

Demonstrate missing app from `;app` compiler prior to running custom compiler.
To demo.
```
$ cd apps/app
$ mix deps.compile
$ mix compile
Generated app app
** (MatchError) no match of right hand side value: {:error, {:app, {'no such file or directory', 'app.app'}}}
    lib/mix/tasks/compile.custom.ex:7: Mix.Tasks.Compile.Custom.run/1
    (elixir) lib/enum.ex:1088: Enum."-map/2-lists^map/1-0-"/2
    (elixir) lib/enum.ex:1088: Enum."-map/2-lists^map/1-0-"/2
    (mix) lib/mix/tasks/compile.all.ex:19: anonymous fn/1 in Mix.Tasks.Compile.All.run/1
    (mix) lib/mix/tasks/compile.all.ex:37: Mix.Tasks.Compile.All.with_logger_app/1
    (mix) lib/mix/tasks/compile.ex:87: Mix.Tasks.Compile.run/1
    (mix) lib/mix/cli.ex:58: Mix.CLI.run_task/2
$ mix compile
==> compiler
Compiled lib/mix/tasks/compile.custom.ex
==> app
Generated app app
Env: [foo: :bar, included_applications: []]
Consolidated List.Chars
Consolidated Collectable
Consolidated String.Chars
Consolidated Enumerable
Consolidated IEx.Info
Consolidated Inspect
```
