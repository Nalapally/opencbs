﻿// Copyright © 2013 Open Octopus Ltd.
// 
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License along
// with this program; if not, write to the Free Software Foundation, Inc.,
// 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
// 
// Website: http://www.opencbs.com
// Contact: contact@opencbs.com

using System.Windows.Forms;
using OpenCBS.Interface;
using OpenCBS.Interface.Presenter;
using OpenCBS.Interface.View;

namespace OpenCBS.View
{
    public class ConfirmationView : IConfirmationView
    {
        private IConfirmationPresenterCallbacks _presenterCallbacks;
        private readonly ITranslator _translator;

        public ConfirmationView(ITranslator translator)
        {
            _translator = translator;
        }

        public void Run(string message)
        {
            var result = MessageBox.Show(_translator.Translate(message), _translator.Translate("Confirmation"), MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
                _presenterCallbacks.Ok();
            else
                _presenterCallbacks.Cancel();
        }

        public void Stop()
        {
        }

        public void Attach(IConfirmationPresenterCallbacks presenterCallbacks)
        {
            _presenterCallbacks = presenterCallbacks;
        }
    }
}