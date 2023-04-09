defmodule TimeZoneSyncBot.Handlers.TimeZonesCommand do
  def handle(token, chat_id, message_id) do
    {:ok, message} = TimeZoneSyncBot.Commands.TimeZones.execute(chat_id)

    Telegram.Api.request(token, "sendMessage",
      chat_id: chat_id,
      reply_to_message_id: message_id,
      text: message,
      parse_mode: :HTML
    )
  end
end
