package io.kloudfile.telegram.bot.bots;

import io.kloudfile.telegram.bot.dto.infosys.callbackDTO.ResponseDTO;

import java.util.List;

/**
 * Created by larsg on 07.03.2017.
 */
public interface Bot {

    String getBotToken();

    void exec(String command, List<String> args, ResponseDTO responseDTO);
}
