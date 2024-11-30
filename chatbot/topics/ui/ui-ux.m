\ Copyright © 2024 User All Rights Reserved.
\ This work is licensed under a Creative Commons Attribution-ShareAlike 4.0 International License.
\ Please visit https://creativecommons.org/licenses/by-sa/4.0/ for the full license.
\
\ Author: Pratama123
\ Date: 30 Nov 2024
\
\ Common UI/UX for Apple Swift Programming Chatbot
\

"SwiftBot" => botname

: intro ( "title" "desc" "img" -- "s" )
    ctx{ ti desc img }
    q{
        <h3 style="text-align: center;">#{ti}</h3>
        <p style="text-align: justify; padding: 0 0.8rem;">#{desc}</p>
        <img style="width: 95%; margin: 0.8rem;" src="#{img}">
    }q
;

: button ( "label" "bgcolor" -- "s" )
    ctx{ label bgcolor }
    q{
        <button style="margin: 10px; padding: 10px 20px; font-size: 16px;
                       color: white; background: #{bgcolor};
                       border: none; border-radius: 8px;
                       cursor: pointer; text-align: center;">
            #{label}
        </button>
    }q
;

: button-primary ( "label" -- "s" )
    "#007AFF" button
;

: button-secondary ( "label" -- "s" )
    "#5856D6" button
;

: button-danger ( "label" -- "s" )
    "#FF3B30" button
;

: chat-bubble ( "message" "sender" -- "s" )
    ctx{ msg sender }
    q{
        <div style="margin: 0.5rem 0; padding: 10px; border-radius: 12px;
                    max-width: 80%; word-wrap: break-word;
                    background: #{sender == "user" ? "#E5E5EA" : "#34C759"};
                    color: #{sender == "user" ? "#000" : "#FFF"};
                    text-align: #{sender == "user" ? "left" : "right"};
                    align-self: #{sender == "user" ? "flex-start" : "flex-end"};">
            #{msg}
        </div>
    }q
;

: form-ui ( "label" "placeholder" -- "s" )
    ctx{ label placeholder }
    q{
        <div style="margin: 1rem 0;">
            <label style="font-weight: bold; display: block;">#{label}</label>
            <input type="text" placeholder="#{placeholder}"
                   style="width: 100%; padding: 10px; border-radius: 8px;
                          border: 1px solid #ccc; margin-top: 5px;">
        </div>
    }q
;

: form-submit ( "label" -- "s" )
    ctx{ label }
    q{
        <button style="width: 100%; padding: 10px; margin-top: 1rem;
                       font-size: 16px; color: white; background: #007AFF;
                       border: none; border-radius: 8px; cursor: pointer;">
            #{label}
        </button>
    }q
;

\ Chatbot UI

: example-ui ( -- "s" )
    q{
        <div style="display: flex; flex-direction: column; width: 100%; max-width: 500px; margin: auto;">
            #{ "Selamat datang di SwiftBot!" "Saya adalah asisten Anda untuk belajar Swift." "https://example.com/swift.png" intro }
            #{ "Mulai Belajar" button-primary }
            #{ "Kembali" button-secondary }
            #{ "Keluar" button-danger }
            #{ "Pesan Anda" "Ketik sesuatu..." form-ui }
            #{ "Kirim" form-submit }
        </div>
    }q
;