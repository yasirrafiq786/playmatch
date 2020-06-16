import consumer from "./consumer";

const initConversationCable = () => {
    const messagesContainer = document.getElementById("messages");
    if (messagesContainer){
        const id = messagesContainer.dataset.conversationId;

        consumer.subscriptions.create({channel: "ConversationChannel", id: id}, {
            recieved(data){
                messagesContainer.insertAdjacentHTML('beforeend', data);
            },
        });
        
    }
}

export { initConversationCable };