defmodule EctoBug do
  alias EctoBug.MySchema

  import Ecto.Query

  def psql do
    setup(EctoBug.Repo)
    do_bug(EctoBug.Repo)
  end

  def mysql do
    setup(EctoBug.MySQLRepo)
    do_bug(EctoBug.MySQLRepo)
  end

  defp setup(repo) do
    repo.delete_all(MySchema)
    repo.insert_all(MySchema, [
      %{title: "sample", view_count: 1},
      %{title: "sample", view_count: 2},
      %{title: "sample", view_count: 3},
      %{title: "sample", view_count: 4},
      %{title: "sample", view_count: 5},
      %{title: "sample", view_count: 6},
    ])
  end

  defp do_bug(repo) do
    title = "sample"
    view_count = 3
    zero = 0

    update_query =
      from(
        ms in MySchema,
        where: ms.title == ^title and ms.view_count > ^view_count,
        order_by: [asc: ms.id],
        limit: 1
      )

    repo.update_all(
      from(
        ms in MySchema,
        join: ms2 in subquery(update_query),
        on: ms.id == ms2.id
      ),
      set: [
        view_count: zero
      ]
    )
  end
end
