using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BlazorComponent.Data
{
    public class AppState
    {
        public bool IsLoggedIn { get; private set; } = false;

        public event System.Action OnChange;

        public void SetLoginStatus(bool loginStatus)
        {
            IsLoggedIn = loginStatus;
            NotifyStateChanged();
        }

        private void NotifyStateChanged() => OnChange?.Invoke();
    }
}
