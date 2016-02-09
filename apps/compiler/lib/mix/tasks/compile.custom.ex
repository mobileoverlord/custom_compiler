defmodule Mix.Tasks.Compile.Custom do
  use Mix.Task

  def run(_) do
    config = Mix.Project.config
    app = config[:app]
    {:ok, _} = Application.ensure_all_started(app)
    IO.puts "Env: #{inspect Application.get_all_env(app)}"
  end

end
