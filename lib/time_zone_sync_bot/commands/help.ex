defmodule TimeZoneSyncBot.Commands.Help do
  @help """
  Available commands:
  /add_time_zone label time_zone – Add time zone (TZ database name).
  /update_time_zone label new_time_zone – Update time zone.
  /remove_time_zone label – Remove time zone.
  /clear_time_zones – Remove all time zones.
  /time – Show time in time zones.
  /date – Show date in time zones.
  /time_zones – Show time zones.
  /help – Show help message.
  """

  def execute() do
    {:ok, @help}
  end
end
