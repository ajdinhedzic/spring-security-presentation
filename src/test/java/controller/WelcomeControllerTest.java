package controller;

import org.junit.Test;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@WebAppConfiguration
public class WelcomeControllerTest {

    @Test
    public void welcomeReturnsIndexPage() throws Exception {
        MockMvc mockMvc = MockMvcBuilders.standaloneSetup(new WelcomeController()).build();
        mockMvc.perform(get("/welcome"))
                .andExpect(status().isOk())
                .andExpect(model().attributeExists("message"));
    }
}