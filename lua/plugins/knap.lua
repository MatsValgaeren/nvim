return {
    {
        "frabjous/knap",
        lazy = false,
        config = function()
        vim.g.knap_settings = {
            mdoutputext = "html",
            mdtohtml = "pandoc -o %outputfile% %docroot%",
            mdtohtmlviewerlaunch = "falkon %outputfile%",
            mdtohtmlviewerrefresh = "none",
        }

        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "markdown", "pandoc", "md" },
            callback = function()
            vim.keymap.set("n", "<leader>kt", function()
            require("knap").toggle_autopreviewing()
            end, { buffer = true, desc = "KNAP toggle auto-preview" })
            end,
        })

        end,
    },
}
