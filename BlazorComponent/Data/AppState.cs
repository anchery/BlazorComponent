using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BlazorComponent.Data
{
    public class AppState
    {
        public string SelectedColour { get; private set; } = "blue";

        public event System.Action OnChange;

        public void SetColour(string colour)
        {
            SelectedColour = colour;
            NotifyStateChanged();
        }

        private void NotifyStateChanged() => OnChange?.Invoke();
    }
}
