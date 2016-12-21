package com.dzx.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.AbstractWebSocketMessageBrokerConfigurer;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;

/**
 * Created by simba on 2016/12/13 0013.
 */
//@Configuration
//@EnableWebSocketMessageBroker
public class WebSocketConfig extends AbstractWebSocketMessageBrokerConfigurer {
    @Value("${my.websocket.brokers.suffix}")
    private String suffix;

    @Override
    public void configureMessageBroker(MessageBrokerRegistry config) {

        String[] suffixArr = suffix.split(",");
        String[] brokerArr = new String[suffixArr.length];
        for(int i=0;i<suffixArr.length;i++){
            brokerArr[i] = "/topic"+suffixArr[i];
        }

        config.enableSimpleBroker(brokerArr);
//        config.enableSimpleBroker("/topic");
        config.setApplicationDestinationPrefixes("/game");
    }

    @Override
    public void registerStompEndpoints(StompEndpointRegistry registry) {
        String[] suffixArr = suffix.split(",");
        String[] brokerArr = new String[suffixArr.length];
        for(int i=0;i<suffixArr.length;i++){
            brokerArr[i] = "/allgameinfo"+suffixArr[i];
        }

//        registry.addEndpoint("/allgameinfo").withSockJS();
        registry.addEndpoint(brokerArr).withSockJS();
    }

    public String getSuffix() {
        return suffix;
    }

    public void setSuffix(String suffix) {
        this.suffix = suffix;
    }
}