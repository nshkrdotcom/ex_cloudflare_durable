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

#####################################
####################################

defmodule ExCloudflareDurable do
  @moduledoc """
    Provides helper functions for interacting with Cloudflare Durable Objects.
  """
defmodule Object do
  @moduledoc """
    Provides a thin interface for accessing Durable Object namespaces
    """
    require Logger

    @spec get_namespace(String.t()) ::
             {:ok, any} | {:error, String.t()}
    def get_namespace(name) do
      case :cloudflare.binding_get(name) do
          {:ok, namespace} when is_map(namespace) ->
              {:ok, namespace}
          {:error, reason} ->
              Logger.error("Failed to resolve Durable Object Namespace with name: #{name} - #{reason}")
               {:error, "Durable Object Namespace with name: #{name} not found: #{reason}"}
              _ ->
                  {:error, "Unexpected response"}
        end
    end
  end

  defmodule Storage do
   @moduledoc """
     Direct interface to DO storage
     """
      @spec put(String.t(), any(), keyword()) :: {:ok, any()} | {:error, String.t()}
     def put(key, value, _opts \\ []) do
       case :cloudflare.durable_object_storage_put(key, value) do
         :ok -> {:ok, value}
         {:error, reason} -> {:error, reason}
       end
      end

       @spec get(String.t()) :: {:ok, any()} | {:error, String.t()}
      def get(key) do
         case :cloudflare.durable_object_storage_get(key) do
              {:ok, value} -> {:ok, value}
               {:error, reason} -> {:error, reason}
         end
       end

       @spec list(String.t()) :: {:ok, list(map())} | {:error, String.t()}
       def list(prefix) do
             case :cloudflare.durable_object_storage_list(prefix) do
               {:ok, map} -> {:ok, map}
               {:error, reason} -> {:error, reason}
           end
       end
       @spec delete(String.t()) :: :ok | {:error, String.t()}
       def delete(key) do
        case :cloudflare.durable_object_storage_delete(key) do
              :ok -> :ok
            {:error, reason} -> {:error, reason}
            end
     end
 end
end
