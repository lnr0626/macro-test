defmodule MacroTestWeb.Components.Macro do
  use Surface.MacroComponent

  property(value, :string)

  def expand(attributes, _children, meta) do
    props = Surface.MacroComponent.eval_static_props!(__MODULE__, attributes, meta)

    [
      %Surface.AST.Text{
        value: props[:value] || "Hello!"
      }
    ]
  end
end
