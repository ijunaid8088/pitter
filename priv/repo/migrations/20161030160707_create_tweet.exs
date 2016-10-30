defmodule Pitter.Repo.Migrations.CreateTweet do
  use Ecto.Migration

  def change do
    create table(:tweets) do
      add :image_url, :string
      add :content, :string
      add :source_url, :string

      timestamps()
    end

  end
end
