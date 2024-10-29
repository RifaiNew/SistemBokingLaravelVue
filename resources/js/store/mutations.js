const mutations = {
    SET_USER(state, user) {
        state.user = user; // Simpan user di state
    },
    SET_TOKEN(state, token) {
        state.token = token;
        localStorage.setItem('auth_token', token);
    },
    SET_WARUNG(state, warung) {
        state.warung = warung; // This should already be correct
    },
    SET_WARUNG(state, updatedWarung) {
        const index = state.warung.findIndex(warung => warung.idWarung === updatedWarung.idWarung);
        if (index !== -1) {
            // Replace the old warung with the updated warung
            state.warung.splice(index, 1, updatedWarung);
        }
    }
    
    
};

export default mutations; // Ekspor default
