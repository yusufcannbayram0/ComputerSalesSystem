﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ComputerSalesSystem
{
    public partial class CustomerManager : Form
    {
        public CustomerManager()
        {
            InitializeComponent();
        }

        private void CustomerManager_Load(object sender, EventArgs e)
        {
            this.FormBorderStyle = FormBorderStyle.None;
            this.Focus();
            this.BringToFront();
            this.TopMost = true;
            this.Bounds = Screen.PrimaryScreen.Bounds;
            this.Bounds = Screen.PrimaryScreen.Bounds;
        }
    }
}
