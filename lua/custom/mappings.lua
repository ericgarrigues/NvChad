---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>gg"] = {"<cmd> LazyGit <CR>", "LazyGit"},
    ["<leader>og"] = {"<cmd> OGPT <CR>", "Ollama GPT"},
    ["<leader>oc"] = {"<cmd> OGPTCompleteCode <CR>", "OGPT AI complete code"},
    ["<leader>oa"] = {"<cmd> OGPTActAs <CR>", "OGPT AI Acting"},
    ["<leader>of"] = {"<cmd> OGPTFocus <CR>", "OGPT Focus"},

  },
  v = {
    [">"] = { ">gv", "indent"},
    ["ge"] = { "<cmd>OGPTRun edit_with_instructions<CR>", "Edit with instruction", mode = { "n", "v" } },
    ["gc"] = { "<cmd>OGPTRun edit_code_with_instructions<CR>", "Edit code with instruction", mode = { "n", "v" } },
    ["gg"] = { "<cmd>OGPTRun grammar_correction<CR>", "Grammar Correction", mode = { "n", "v" } },
    ["gt"] = { "<cmd>OGPTRun translate<CR>", "Translate", mode = { "n", "v" } },
    ["gk"] = { "<cmd>OGPTRun keywords<CR>", "Keywords", mode = { "n", "v" } },
    ["gd"] = { "<cmd>OGPTRun docstring<CR>", "Docstring", mode = { "n", "v" } },
    ["ga"] = { "<cmd>OGPTRun add_tests<CR>", "Add Tests", mode = { "n", "v" } },
    ["go"] = { "<cmd>OGPTRun optimize_code<CR>", "Optimize Code", mode = { "n", "v" } },
    ["gs"] = { "<cmd>OGPTRun summarize<CR>", "Summarize", mode = { "n", "v" } },
    ["gf"] = { "<cmd>OGPTRun fix_bugs<CR>", "Fix Bugs", mode = { "n", "v" } },
    ["gx"] = { "<cmd>OGPTRun explain_code<CR>", "Explain Code", mode = { "n", "v" } },
    ["gr"] = { "<cmd>OGPTRun roxygen_edit<CR>", "Roxygen Edit", mode = { "n", "v" } },
    ["gl"] = { "<cmd>OGPTRun code_readability_analysis<CR>", "Code Readability Analysis", mode = { "n", "v" } },
  },

-- more keybinds!

}

return M
