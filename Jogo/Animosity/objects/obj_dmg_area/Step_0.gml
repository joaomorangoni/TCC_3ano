if (global.pause) {
	exit;
}
	if (_alvo && !_alvo.dano)
		{
			_alvo.vida -= damage;
			_alvo.dano = true;
		}