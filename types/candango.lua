---@class Set_globals
---@field define_code_raw string
---@field init_ignore string
---@field define_call_function string
---@field open_brackets string
---@field close_brackets string

---@class Response_render
---@field exist_error boolean
---@field error_message string|nil
---@field render_text string|nil

---@class CandangoEngine
---@field Get_text_by_file_content fun(path:string):string
---@field Render_text fun(text:string):Response_render


---@type CandangoEngine
candango = candango
