defmodule CRUDimentary.Absinthe.Generator.Field do
  @moduledoc false

  defmacro has_many(name, type \\ nil, do: do_block) do
    singularized_name = Inflex.singularize(name)
    type = if type, do: type, else: singularized_name
    quote do
      field unquote(name), unquote(String.to_atom("#{singularized_name}_list_result")) do
        arg(:filter, list_of(unquote(String.to_atom("#{singularized_name}_filter"))))
        arg(:sorting, unquote(String.to_atom("#{singularized_name}_sorting")))
        arg(:pagination, :pagination_input)

        unquote(do_block)
      end
    end
  end
end
