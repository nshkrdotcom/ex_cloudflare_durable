defmodule ExCloudflareDurable do
  defmodule Room do
    @moduledoc """
    Clean abstraction of Orange's ChatRoom DO
    """
    use GenServer

    defmodule State do
      # Core state management
      defstruct [:id, :storage, :connections]
    end

    def start_link(room_id) do
      GenServer.start_link(__MODULE__, room_id)
    end

    # Storage operations
    def put(room, key, value) do
      # Maps to DO storage.put
    end

    def get(room, key) do
      # Maps to DO storage.get
    end

    # Connection management
    def broadcast(room, message) do
      # Maps to DO broadcast
    end
  end

  defmodule Storage do
    @moduledoc """
    Direct interface to DO storage
    """
    def put(key, value, opts \\ [])
    def get(key)
    def list(prefix)
    def delete(key)
  end
end
