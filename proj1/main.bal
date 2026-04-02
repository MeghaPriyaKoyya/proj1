import ballerina/log;
import ballerina/uuid;
import ballerinax/rabbitmq;

listener rabbitmq:Listener rabbitmqListener = new (host = string `${host}localhost`, port = port, username = username, password = string `${password}`);

service "event" on rabbitmqListener {
    remote function onMessage(rabbitmq:AnydataMessage message, rabbitmq:Caller caller) returns error? {
        do {

        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

    remote function onError(rabbitmq:AnydataMessage message, rabbitmq:Error rabbitmqError) returns error? {
        do {
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

}
