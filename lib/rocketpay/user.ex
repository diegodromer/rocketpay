defmodule Rocketpay.User do





 



















































































































  use Ecto.Schema
  import Ecto.Changeset

  alias Ecto.Changeset

  @primary_key{:id, :binary_id, autogenerate: true}

  @requered_params [:name, :age, :email, :password_hash, :nickname]

  schema "users" do
    field :name, :string
    field :age, :integer
    field :email, :string
    field :password_hash, :string
    field :nickname, :string

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @requered_params)
    |> validate_required(@requered_params)
  end

end
